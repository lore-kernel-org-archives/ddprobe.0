Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D90B539A
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 09:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647682884;
	h=To:Subject:From:Message-Id:Date;
	bh=nCjad64ZuX9c165xz2aycqSfJh4lv8q20hWCng/ohfY=;
	b=WZP8/ZxJwbOihzcNxsfw9AkQE0M+NkWhLhgF/WGuuFWMt13b1XRyGjT4rVzDw4nT
	i8lupK9t6WlDu0cCOiQDTxF/J/xL+MgD7gOZEQiAFsdkV153OjQ7E6TBQb9714h71UN
	7KRDwaqaQ5ECRK0frVQhMx35aX15YPzv2FCfcKW8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647682884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nCjad64ZuX9c165xz2aycqSfJh4lv8q20hWCng/ohfY=;
	b=j/s2DFVmvSnDrZPDHysyURJqvGeIC9CUtqaTC3HLEnWtUhZFcHjB18u5jornm7tg
	VfVRKF3hR06z9rTdE9rGnJTiPTZ1GUZvceGQoyc8qyLCcy0mWujj6CaLiK4H/BxCxN1
	Pmiz+O8rmPvmpVSLP98irZNbNTbL5Gu9ziRytrOc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa18d9487-dcd22787-a186-4201-aed3-f996ab54a7bc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: beb4a6c78a0f6f1697da06b748c259a51623db1ce1d99057ff7c5a82923110e6
Date: Sat, 19 Mar 2022 09:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647682884
