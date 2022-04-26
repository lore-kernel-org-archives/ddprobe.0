Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2093C625
	for <ddprobe@lists.linux.dev>; Tue, 26 Apr 2022 10:23:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650968638;
	h=To:Subject:From:Message-Id:Date;
	bh=54mVmt5+/oKl9jaPt9YbuSYcne03UhfHLy+IkOkPBJ4=;
	b=WtPye2vIpEQ2iRf2YzyTwfcqZwdv/caKTpb5/q4xa/LU6jA2nEpweW+8EbdESK0+
	VeS3ZRe3EKrK/iNtA33hMMB8Lpuxto1405UVJ2uGxvgBNt5hmN/mCj9Ypkshiu38v4w
	Kd42R/jz1GB4udIAU1c22jMYUwntk1GWfIgh6av4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650968638;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=54mVmt5+/oKl9jaPt9YbuSYcne03UhfHLy+IkOkPBJ4=;
	b=CB/I34qiblyDc19qUgpOJkDryjru9pN2j1/kLXvh4iGZDh559PfQKm/0Vxt1iPHP
	Lyz6ikoodw8YwxT49AVDY1O19EVNRkriTVpSg6YK0YqMjS5ULHlza0dZu+cere+5KPU
	QyY8fPETximtq83ZTSQ+1/zSL3Ndgonfv3HsVabk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101806566332c-4547b07c-939d-4936-9367-42c5b82456c4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5029a5e7e571ea02cb8095459b93583602f528329f7755527d6d3201f1697f14
Date: Tue, 26 Apr 2022 10:23:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.26-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650968638
