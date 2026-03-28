Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F13240DFDF
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 23:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774739094; cv=none; b=KqZuJUGjnHB4z6iU77cJk+oZ3GiJ2aonM10aK7dO66CmupimfseD9TUhTXN8j9vsh0Gz+NkdAv4cNpMu+G4OlBxYRY5Kc2l3M4Zv2L5GJ7oWxpYKylOlb6U9hSSygtYG90ETnvQINanUYR2oQ20pHukHosv6VMzPGpIQV13HwhQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774739094; c=relaxed/simple;
	bh=4TTvbQtPul/Ie9VPDxl1r8A55HWJ9phOhb7HqddyPmk=;
	h=To:Subject:From:Message-Id:Date; b=TX0figW/YnwVj23WrbR0qbD/oWDAGqJF6+euiHO8EUTuZki4+h7LWVG8v3azEI2/rEOn0AumbyuBCkYKL6q030L5qQc0iGZTOosBB3kjbMhy831WLsmot72BvFzM/D1Dx9wwfF1MPraMuvPD/VWeqpVwe/V+/MmV33SllmHMCWQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pG7KzyOT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pG7KzyOT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAA54C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 23:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774739093;
	bh=4TTvbQtPul/Ie9VPDxl1r8A55HWJ9phOhb7HqddyPmk=;
	h=To:Subject:From:Date:From;
	b=pG7KzyOTt+Botvfu0xs5BuMGBtpO48lgVMq5vWa14E+DD7vbtq7Q0rcdWDWQjEgP5
	 cFvvf9C1Dv3uvaFj9YhUWb+OJg7deOw4LHcF9kQRFoZhKsC3+hLEN8YEVcZKhMzpU0
	 21sd2myR4Io+cKJ8D/v92XRZrdAYfXTyUH6R4olaYGXlecVbhg9oZB4I8q02zI4sgN
	 K4OaI5MA8kD9hvW64FziwEIxWo62sf8KL6fEhp6bAlI7/I0FZNqfiUOdbq3q/1EnIm
	 gP8HrM0J/KrH8GiWW+DmHzUjHFEiIlLst11J2EoGmIIlxfT/1Stoo82kT1PXgvtHjz
	 37Jz9WjRQE0Qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 972CE10D148A
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 23:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177473909358.20374.4399945397842220268.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e47801af25febc3f58338ebb4e1ac7b6c31e04a5ae16df6624a2d6998bdd03c
Date: Sat, 28 Mar 2026 23:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774739093
