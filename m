Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37E1A29CE1
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745129994; cv=none; b=c22A2rQJop8ayTDDrpJg3R6pxM/28rl/91i0Sg9hQmdR7SoBvPfFkB8+y0KU34G9O+loDLA96sFk87BltChUHGy9fSOb3j6Q9YFhbojPUmH7+UcLDd/FwSFHhotYiX/6dcxIGRBoLuakt0msqeT84ZwbRzsFoYtxwCEDAgTb9EU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745129994; c=relaxed/simple;
	bh=Yggi0/C/fQ0q4TTimFDRiZf5qBz83EgNOs+DqOQv4FY=;
	h=To:Subject:From:Message-Id:Date; b=WIw6AMmkCWCGqBrFwRLsQRqV+sGS9N0JmLJ9D1QWbEPEdqZTE/WweqRQzytQ83woex/F5UkB96GiK4gslCaRtkGFVlDthg4YQRjxjqRt7SQwUI0bqlPTgwMMimx2rwqC6c66Vxtty6M7FWsik/d/ORQLQQGTQKo1755e6YaVqSw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HHUWjWJV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HHUWjWJV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B44F8C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745129993;
	bh=Yggi0/C/fQ0q4TTimFDRiZf5qBz83EgNOs+DqOQv4FY=;
	h=To:Subject:From:Date:From;
	b=HHUWjWJVYb3g+lgdtVrofrsx2G4Yg9gWP8w583nqFVOM7nJW7kAzwiu+4RmG33JMO
	 0Y72tuY0N3AT3T4Y0yKgEA4kGbuzWWK/9Qu65f/OsfpBNq+GkYDGe/5FsBhI8vmhwO
	 hqD/Hu52AEcPlH9S3AVkGGwzBOyFIcc6DIonaDW7I1uKb/9R2blaIt3HNAKdS+g/Bp
	 w4QHKTxJvEwmXA6Iv29/PtrStZq3FTk182+WG7XYMkECPiE+TfSG3QBgklc2q5usU0
	 86fdtEnzP7FapsEVgSJ2XExUrz0Yn3EiIT4+t/Lw9VOx+BKGHju2i/e8AUi1OhDUEm
	 Mp1rY6w+HXoSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0AFEC369C2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174512999362.380.14769318795402458704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4662d4f75335f096b95eb946020391df91eccd65d21dce6cf4de71f063ccec9c
Date: Sun, 20 Apr 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745129993
