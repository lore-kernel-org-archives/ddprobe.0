Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E45DC1876
	for <ddprobe@lists.linux.dev>; Thu, 21 Apr 2022 09:10:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650532258;
	h=To:Subject:From:Message-Id:Date;
	bh=kFmYtX4u3pVPXVzYEyeScKKiI+m+3cxJSkr9EgP7ygU=;
	b=OkgOh7731WG4++6OBKgpJgEi9yffRGhHBefIi3Y/ZQXEZ5lfqI8hAALKzsWpBcxH
	4fGI2L0O92NR2q93NCNtg1y+MOgW6VgoFIwXvUKdjXU6Q/FHWNPKnwwpRi7kfh4ba8h
	YgJEqY8D+vbtyHIWKI3d1rD2DnMSu9lTNEp1CkXA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650532258;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kFmYtX4u3pVPXVzYEyeScKKiI+m+3cxJSkr9EgP7ygU=;
	b=ZaCQuLsXx5SwsCbzFJo5XyH8ylv07zby6WXBvYnGDFW6XlOtcuH2AMVB3rfVV78l
	b6eTwvbPwWXf6jTu7iFAV9uAyTKYB6p9wK5gPLPqRlbdqcYtfd2394Ty+xAGqHAzLAw
	yBdaLt2cr0pAp97/JYJaMphRZl137fvGJCdpht+E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101804b6391c2-0d71a688-fa85-42a7-ab14-50a61d27cb25-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4589812ebbc761789aee1325af06d70d09cf7c40b3e8da34cd66b2ba49860405
Date: Thu, 21 Apr 2022 09:10:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.21-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650532258
