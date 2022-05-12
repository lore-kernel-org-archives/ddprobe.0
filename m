Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF16317C1
	for <ddprobe@lists.linux.dev>; Thu, 12 May 2022 20:43:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652388239;
	h=To:Subject:From:Message-Id:Date;
	bh=1WQZVr+y10tpcHulQz03zyxZFZ80HXeEB9ukwSuEcAQ=;
	b=H/2VAE6MNSGIrFmvdOxJw9hoH7SVUH4bicjEopleFgQiMqU6VQJWRgXdAY3Ua9aD
	7kM8FCDxdo2zKhamgQh+gKD8QYkiAiulAtj4/5XSRPdBrhqDyYNKZVNT1e1CbnLiCeU
	m1Bt959TBpVC/v4ziqTOeW3XzwacNB7OI8TRGFJs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652388239;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1WQZVr+y10tpcHulQz03zyxZFZ80HXeEB9ukwSuEcAQ=;
	b=h/BdZZCgMYJgFokragMIvoRu+gzfx7fGE87lQQ7KpwlrPdrfHqfzJnW36yXcwZv8
	lj9BtbGGBub+Vqnzf483WlXRuosCzfTsxr+M7VDV4KRCikO3Z/5M1JsLDzn3/myBVhE
	fNt3AWR3KX0huUYGCYIcaf2lptBQKPBYcCUBrFi0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ba039798-0480be64-5290-4ea9-b821-a5d0ad2b84d4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 91a8a3b5af7c2504619c7bf4d4bcea05654f09bc9bd309378fa5dd9f912dd246
Date: Thu, 12 May 2022 20:43:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.12-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652388239
