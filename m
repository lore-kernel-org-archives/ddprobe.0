Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8EB9CECD
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 03:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648005685;
	h=To:Subject:From:Message-Id:Date;
	bh=Jq80ukZYdVVEtofWfsui+YUQ+y04WxVRcf48MYeG+MQ=;
	b=F98jlrAwd4o4gamoqAyOicinMhSS8xMl1KXljrgW8j/PqqQFqgCDTKhgV8GS3axL
	MVc81UOXZutLBbOKEV7S3OZX6rjQRPW81I4gkH6SS9a3TuNjfitOg38IGEA/JJdbecu
	yMLP6Mnh6vAGZxQ/9bpAe8Ekrf+zy/toVuI/XJ/A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648005685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Jq80ukZYdVVEtofWfsui+YUQ+y04WxVRcf48MYeG+MQ=;
	b=PrqcjraChtdPJEXAwLm1rOa+h/F3yfOuA2ej6Ax2ZUYZQc2hwqe3XAbBiLLzlpwV
	y+vV0+C88E7cerkDmj+dze4vjBWNy04Sn5RAcfF/uWQ0fdp7o8oZ9UWLmbP7tfY2Y/h
	x0OP6+cC+9EgRMHEjp17s0PlgQj35SVOWbTaq3K0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb4cb1df7-ad0d07e9-897d-4fe3-8f97-284181493bc2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 62b3cf8539df42d6cd8b10488ad2a9e337bc327a6701cf3dd44d6d624fe415f4
Date: Wed, 23 Mar 2022 03:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648005684
