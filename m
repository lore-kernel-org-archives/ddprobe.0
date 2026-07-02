Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EC7A3264C7
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 22:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783030114; cv=none; b=RZCfx9us2jwn6gkEgP2VCJa2LzxuEfcLvRV7pLibmQd+HfV2+Gwc5rdyQS8Q3s8H/w9PNsmLvbxJk1Fk+3MPrCqsD0Y7kqVYgqdee7JvHZ8UqIliruwdJnn4ow3nP05z16scg3hEL8KZEj23x1f/6nVEMTfMnuiYlDHejlOBYN4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783030114; c=relaxed/simple;
	bh=AzCiGTYSGtaNvgG7OMfN7zNI5/UgumPjy3pSmD3pKmk=;
	h=To:Subject:From:Message-Id:Date; b=anVezx//r+nNldRROPTyrP+ZxkNFj3xYGzp22lQPOkGhKvY7IAngfwk2TNuB7kDXMKvAO1IwNCT8cR9yG4gKE1WCWQDqDquFUCU0JpiNxyvAJ5GYeVKlgFOo8fMqewy6iseIg5wVdbbdg5gMp6xCuUZq6Wkk1yTIi1HTc2fMuqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OW2soR4n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OW2soR4n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0422C19425
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 22:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783030113;
	bh=AzCiGTYSGtaNvgG7OMfN7zNI5/UgumPjy3pSmD3pKmk=;
	h=To:Subject:From:Date:From;
	b=OW2soR4nkYoBaE3FMY7NH9LDXLjnjkCKXrN1YjPc86sLWrNWaUihHjXGJ2qQMLlWz
	 YBGz8BIuZbpzLolcyoHH7QFAZdeW8bM2lhyEvJdKPMWEe/4bgBpbqMvqzVuuuoxLiL
	 Jrg3JTq9iaM90fOFRB39NzldPlDC0diSn7tU67ak8DLO6JOTPS85HJwuB2PRzaD2u/
	 JOve1qBLO5oCSAh5j4shrWeIO6UIxmyhCvsTz/YBnCC9tkeH7l+n+/sTK+xfwbUUJ2
	 W1NU0Rp197kaS/f/k/rscroSQPfviS6YPkKc7RqRbFF2dX9jCc+n/noYallKF1Fcbx
	 OG5SbgjjCuwGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AED11C43327
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 22:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178303011370.4385.13802928718038644513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6127b866fbf13c5ec758bdc997eaf675745e58e2567a60331a11df416f7b9c17
Date: Thu, 02 Jul 2026 22:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783030113
