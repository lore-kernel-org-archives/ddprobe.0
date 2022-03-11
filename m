Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6557A33D5
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 13:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647003984;
	h=To:Subject:From:Message-Id:Date;
	bh=JIHItACiAed0yP6mvSQDli6+BW1P3ojDbFuQIbxEIUA=;
	b=M1xLUlrEK1gPW/ozBgFY4EMTBSvmxddAqLSUpb6WoYydROsv37j1Ts+hyGKWYM81
	LGnCYzyWZAVkyJqjsyRWRhOvxzyUj95J890KRJGZiHsSnbvA/I8EOfqJV+Tlp7DkPnv
	bSaP+BztDplmXq6+UKWJh8x1EpKx+2u9VxvZ/x/s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647003984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JIHItACiAed0yP6mvSQDli6+BW1P3ojDbFuQIbxEIUA=;
	b=KMDNehxjehCVl7DujjoZRoUd6TFNscvqg8+xAvMfaO45gQunJP8S9nFHNDS6G8kS
	0go3fHwH6Ripe7WukuMJ2RV/CurfkN83CPKNytzH5PjwIkDTidXfkZtkmm0YyZ7I2WB
	o/TpvSO5bqR7FHrqzh8JzCER/JuOcY4sdTVM1T/8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f79166372-c0fb7ff0-efd7-4709-8b51-618ff23bb4bc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 31021904620b06f9448c07c50f1a73a98ad9b93833d50e36ec21912c36a96975
Date: Fri, 11 Mar 2022 13:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647003984
