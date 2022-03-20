Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39F1C7B
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 05:16:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647753385;
	h=To:Subject:From:Message-Id:Date;
	bh=AWYpXkx4bJWb85WOEGHLfYtxrLtgMRb5GYNHIodwbwY=;
	b=S43jN45qaMYk/boOMa+Vk5zFZoNbqCiMkTD4lUP21VHSjdPKxLGvBkTXuco/JMJo
	Nbo5Wxwym082ruEgQ2ra0bTgYrkRptYMMgQK3j6AK7tExXh9Gu//E7OStiB2MhHmmJB
	ks8TYx0BhOoqsH85fnVkuNvSmXmi/v5PLnvvqAe4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647753385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AWYpXkx4bJWb85WOEGHLfYtxrLtgMRb5GYNHIodwbwY=;
	b=ksaADKQ85AOM5aN0Ctya0IF0sgXo1Jh7UebaFra5DGLacGmIg3VUBc5seERVrAEQ
	oJwz2VhX5jJOm2zsbNJswf54gx2jHeN0HCeINnZqf0IOqCADygLNbdaM9ErY6K5XcGm
	PRwmSrlIGdSpLqNCPS9rDFFBZ/ZMzZ8QdsBO2JOY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa5c15355-4ac22288-40c2-4010-a8ea-22ff8e7b9858-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2bb0474b629ac7492ed748912093180ed8f996c3a5590b56c7f9966511751ce2
Date: Sun, 20 Mar 2022 05:16:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647753384
