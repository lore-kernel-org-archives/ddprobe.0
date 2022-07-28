Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 283B07A
	for <ddprobe@lists.linux.dev>; Thu, 28 Jul 2022 17:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659028852;
	h=To:Subject:From:Message-Id:Date;
	bh=8qT+/jUj7uxj8JO4Mb3p9TBGPAvLQn6FFXPBTsC2AN8=;
	b=GBvbjLR4zGzDSwymbu6fSZllFeSiNWcjc7vht8UV5b/nK1qaNPS582cY3dcrZq/d
	6f1OFfozP2RTKWS+uTQVjC/aBQGm8i6YQD103zf7f5fw9w3+9/4yVAWolyFKC9Ih8As
	3phOH8VJiVuHRmf0VJvmUcS3fMpo2/KBRMqeiVhc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659028852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8qT+/jUj7uxj8JO4Mb3p9TBGPAvLQn6FFXPBTsC2AN8=;
	b=QtpxfbOIjImovELbGRKIplNj5kf/wtMNEtkJcjiUKQ76gVf6o98HN+Mlyl8Pu7zQ
	8PWI0W/wR2S3KkZvojZKH/FpKI4Ru+gitpKsENWxRYbxDvLKIocP9Fln5RsR3McpQ9b
	NoDFCPg+g+An2N7tzXONRfrvxSA5BKcEOqlqXC94=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018245d34f43-ea4af8ff-ca5f-44ff-bcf7-fc560c83bbd0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 224b771f2cfc5056d0508d9f96f6221a0495bec30c36d14af24be5bffe7d1029
Date: Thu, 28 Jul 2022 17:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.28-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659028852
