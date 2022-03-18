Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C52FF4C60
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 13:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647610585;
	h=To:Subject:From:Message-Id:Date;
	bh=/nvgQ74kmugrQxckQNTihdKLpOWELDfl2UM1GD2B5y4=;
	b=hiRPDB2sPUpx6g6n4K55eg0CjLDB/Kz1LkWPxe2DOOXaxsYtrAe0Hu4Hw7vVTTfp
	jIOxfxjs4gq48usMQSJFw7vP5ev4gAm5e++RefDkkFpjJbztylOfWmsZCbLmv5/FXIZ
	SyzOCZicy0NiIM1TqsGRvyiPt/el7qkIcjqaYw2M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647610585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/nvgQ74kmugrQxckQNTihdKLpOWELDfl2UM1GD2B5y4=;
	b=ikaZA68e7mGOBZKHZapud9gdfQIfxRS7NISyetD7ytAd0UA1PZ18MXpX8XA6FC/6
	cA7b4IRMPS4MWSixKyhi0oNlOt/dov18QOB4OoHMeSTKGIvQmzJInEG8eGXNIJHjfAM
	l9bnMIiBor/YqykbBNSlXyNx8IZ07b41JLlrR6vE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9d3e5ecd-ece7bb22-b66c-45a5-aec6-dc9ada6692ee-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 47bc72b2b3447004f24ec64e3cb8e39ac5233309fa5420cc02025f820b05a721
Date: Fri, 18 Mar 2022 13:36:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647610584
