Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 323592566
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752632394; cv=none; b=fk26EfXZTw35EaHhZLhoRJvCzLyhPHgyCEHctSV7Nt55tbAacdLMsz4G7cP4vckftM9duXlKt/a93Nnx+cIouywps5IADBqxrlWHf44nSmt3Olqjhh2g1p44LQuXKkvVKyJoNyKgZWf45jMWTU/o4d1dmi1dLrVgpBLXy8AlWI8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752632394; c=relaxed/simple;
	bh=sdcOhe7hxJ4CRN0vPJ0COmNVxIYNm65qxmi/FfaYJ34=;
	h=To:Subject:From:Message-Id:Date; b=irlOowoVzIo7HMNXyPw+8lmFb/5JC+vs2sa6Ud59H4kMLwct38HQR8Knm3izpuda4jN/1VmhSPeChmdOW+ye1k4sC5PXwH03/dCH2M4aUQgogVhc4kvREn2YBA22HEeq2gR6UMoO0/e4qMUruhuDkEK4nOLN2YtAcnDKiSZ3L7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FdjPG1hs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FdjPG1hs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABF2CC4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752632393;
	bh=sdcOhe7hxJ4CRN0vPJ0COmNVxIYNm65qxmi/FfaYJ34=;
	h=To:Subject:From:Date:From;
	b=FdjPG1hsqDp5sxsG7xILFSsI02WC7+wJhPICEELSMEd/4yvnaBwMoTe9MRf7RLnqK
	 LXykBlksvpzpCRHW9dRSEMIpAE0h7ACDx4CIRdK6D48CRYZL3nmpXi6VhZxSlmq4l9
	 2va7wrJNYVUBYH7aNBxHluplC51nt1SN3S2vPlxUwUnb0ol0tn0yGtOuRohY+H1ax3
	 qmtUVBMY1km7b3b8XGYtDPDl7Na4vpKuNuXkJxIUzMtG5HUl1wIj+r9gEyRMYEKsgj
	 1ET1r8bYVW9Dvz/mxzF1VUy+41AhnFrjIinlGvP0zZv84sz3UXvw9Uir/kNJno31iD
	 jPCtkvsqZTfOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9209EC83F17
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175263239357.4167.12778697852805356570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1948332e9333aa87565366a5c25738a9abfd694e4a3fe0ec577dea2c666b8e37
Date: Wed, 16 Jul 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752632393
