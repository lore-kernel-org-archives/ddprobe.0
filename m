Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FF3910E9
	for <ddprobe@lists.linux.dev>; Thu, 26 May 2022 09:38:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653557939;
	h=To:Subject:From:Message-Id:Date;
	bh=c3cD1SvPsHxMWhF3b/MwRHT8RXKtJx8WTpAaIQnx8RE=;
	b=SPYzeQnkBztwQuyv/NCAENgzrks3B8sHNzw+OeiEkLu8xVHN07Pjy8UyCh5m6f30
	LctULy+wXyQB/GKhhC9TtM3qRTyeprD6OFKYXiG/h635P8S3uLtgegNYcMvSf4LPhLW
	Di32bklgNBUrY0RVgwIb4ujYGTf/gYe3yksbPnMU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653557939;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=c3cD1SvPsHxMWhF3b/MwRHT8RXKtJx8WTpAaIQnx8RE=;
	b=XdNwyFdAiRXRbUJqWqerAFZN+IIn5STMYzxQ3g7prhTRgKqhWqW8As3kWz/Eowi0
	wn+LKFYfmDAOt6sf/2YHYIXzbRxm0V+ZG2Ug6WhZ2QlQMYRR75XK2/NMshKgHmeYB7l
	0bj5qi0g/IyjL9DON6w8zS3jXNoFomBSdRl3LDnQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ffbbcc73-314cfe97-fb0c-4d28-b001-045e9e6c7aa1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6c4a8bc1df3cc3f04ea0f2a229ca40e13d4071e1e9ed99030c758c191379d9d8
Date: Thu, 26 May 2022 09:38:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.26-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653557939
