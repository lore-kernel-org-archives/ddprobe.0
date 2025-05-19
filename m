Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42AF1272E7E
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747646994; cv=none; b=rVMkLr4/g6hEKZXR+6cxX7L1Rd1kIpdRS1kfgWV8WT5CDQyQIf/eAZVEI0H5+jbcA5dX8fotGe/Gd4sasXGcZak/T6u7Kz0g+s88kybdISj1odAQmD4JEge7/U/z/f0QkQ29kn7tR9yu2JvdY/e4OIgQJmrRkcsfD93bZ7CBbsI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747646994; c=relaxed/simple;
	bh=8OZxMGXyKbOfWP1nQgx/O3DIQSJ04axO8szL1P7Ct/s=;
	h=To:Subject:From:Message-Id:Date; b=om6liZ8WNZlzmuiwc+RpzpjUjZp02/b+MOgtJKoWe8nDfL6shEaRiGm0FLlaNkBo9d8JyyQrNn0vIBwgtGFi8Z+xI9ryw7bSUleqvR3SOeMduLzuUWvLpjwa6kqOAWIQ7QssYROQcuNha2BwAqN4sAWa/F4ROEHbPseftLJDrKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oqdDzouF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oqdDzouF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB204C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747646993;
	bh=8OZxMGXyKbOfWP1nQgx/O3DIQSJ04axO8szL1P7Ct/s=;
	h=To:Subject:From:Date:From;
	b=oqdDzouFpedu3QBR29qB1Wqc6AK4pG8uHOhgghm2Hd5orPbj4Gg1+ZmI6O2zbsNC6
	 7HJ9MxNREN1iQL0Zmmpq7Wt8vxU2geNrvrNFzCVXyR+vqLnusK/nD0h3yNNRgcrgNb
	 lla+LEznswUKteGdMR/WoJkFF1QvLabhwElJ5Ay2q3nQ5/DqcAOGqXxUQRj828LK0m
	 397WQp2d4HZvwsSUwpETvwCtoDzE12BSu6/OLKdIJNVDNQVFKOUuaeP+QUfqoCFJ5S
	 K2zThU5Fx8IgwdT4x2aI7gXoVU78e/1hW8o9gUKedOpwTT5d2SkIa3zNypu+jXlnrm
	 OOrNqz7fOMZhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9537FC3DA6D
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174764699357.3985.15401010531689613480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c76d07aa618cfbbe4b7a70fc5117c2d520d47acc4dd57554a32ced1b872e255
Date: Mon, 19 May 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747646993
