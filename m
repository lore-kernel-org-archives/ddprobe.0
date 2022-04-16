Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E1247E
	for <ddprobe@lists.linux.dev>; Sat, 16 Apr 2022 06:30:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650090658;
	h=To:Subject:From:Message-Id:Date;
	bh=3b5wKdz2KFo0bJuvty6Fj4HaEkeWL6+BeZIMnbQ6nJQ=;
	b=K8hELfC7nHfL9Ry3L8OnwLkqFtb97naBptQNhM4BFiw5gaYddoE3YDxMPcT5pc7p
	zQOmvahN0+arzvbBGBX98FAD7yaq+58bBcOgPIt3xww2Z1Y8F92Yd2Wcru9NoeQs230
	7ibaQMzatRlsoQDZ9TcnnU1OeoV+5YtlmUa88e5A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650090658;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3b5wKdz2KFo0bJuvty6Fj4HaEkeWL6+BeZIMnbQ6nJQ=;
	b=cHY1f0k8rQ8tjaRehgHQEPCqEY1vkLqhvXhG0+vLvDtuND7TNMdAOx0QCELZ6bl1
	pg4ReJDZodEFu5pZNvxe6UpSmS5cPWCtTyXO72Cfbs9+0J/89qCRHpMV+zDnUGFf1BB
	fojGYS+b2m6wOQ3Da0oKBAt6m99YGqVCZVMpdRHU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180311149e9-7b2161bd-ee36-4a51-905b-06785211b7b9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dfd12f1bece9f901c10363b793aa83520e3626a279fcb01142988769a201f821
Date: Sat, 16 Apr 2022 06:30:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.16-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650090658
