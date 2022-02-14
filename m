Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87F7E7A
	for <ddprobe@lists.linux.dev>; Mon, 14 Feb 2022 07:20:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644823239;
	h=To:Subject:From:Message-Id:Date;
	bh=3hYt2bS3cTZN3YvbRqkG4ks4xYWvil77eI17CboljeM=;
	b=atHJQUZzSO8/X6S/ALYAnhpWcnD9jX0/pvAReIIR0BeweAxllCQP7C5zk2dggaIy
	OlwV+8XWk0SAS5h0v8Y4tBSp2jmyC/6YLoMl3YCnVVvJQ/t1f7jGAC4sGX8LdxExRkw
	3wA1W+zdtkWiZCVEFoEPLR3eVv1oDowswqnltoUQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644823239;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3hYt2bS3cTZN3YvbRqkG4ks4xYWvil77eI17CboljeM=;
	b=KZZyIZCFKWVluKWMinhLfSyO2+1hf2VJ+eyPoEh7M8kTcv+I5KG9fpC/6FHSruzh
	3gWeqe1QlllfYB0YWmsCpcATrMA0aJcc+T8+78/9EgZZ48oiba1fL+EtVJiropvaGxN
	NE5/NcIJbWib6ENrsJXqGG2nsj1O4ebJF1ZYEX/0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef71adbe9-fa27ca7d-7879-4a4c-aa5a-1fff3e93398e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ca881dab6b0c730855029378670a92197037cc957c7b9725d01e65695e30a573
Date: Mon, 14 Feb 2022 07:20:39 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.14-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644823239
