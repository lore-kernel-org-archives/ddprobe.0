Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A7AD2F50
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 10:21:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647080485;
	h=To:Subject:From:Message-Id:Date;
	bh=mWmICrThZuJ7RH3xZYNO3Eh9+ugkSQXCx8NczPZMIeA=;
	b=d7Z+uo+U1r/ZHMyUmfObIOuwudLkvQ5Fck7dQtx00LyI1qwGDkBeTdvMfmCsJ7Qn
	N4RMGTHzpzqbxYsi3MJpflpeGNQHkwVtSBpYV5I4Fc1HJRbQT+wkpbIqEa/Ff7x10Bx
	pwsQP0c+zvaPXUftbC2Buu56XDRTXQAPVw3pYtus=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647080485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mWmICrThZuJ7RH3xZYNO3Eh9+ugkSQXCx8NczPZMIeA=;
	b=avIo9uN1XkUgTp1eu1A+KQuTt1w7/inOeXlC0Uw8sAMR0M43Nz29EJ6Jsh+T6OXp
	/kd0HgRAgxSl5WXokqZ7IwVxzXixSVo84PGtNXoMo//vKF/vvhqP4YkHxX50j+JdDIy
	NyvoqI68BvvxTfjWWppJzFqNXjHGbFVFkOLjpSeQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7da5afa2-d4a9f3d1-a246-40fa-88a1-460de830b614-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 642fe2005e6b57b382dd46b8a661399c6c791ee7de55a019ec40b10485c19881
Date: Sat, 12 Mar 2022 10:21:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647080484
