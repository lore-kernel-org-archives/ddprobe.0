Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 136821FA4
	for <ddprobe@lists.linux.dev>; Wed, 15 Jun 2022 02:43:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655261039;
	h=To:Subject:From:Message-Id:Date;
	bh=vrFDwh/APEQZUcO96cdseW65FnF4eWOP7Rf1tnfTZLs=;
	b=XbEH9387v0zUTAWgWu9Zjq+vjNHf99qNHJdu4VeAtXf8S2I5qSGAEUy2dIFoYD1D
	8Y5U/GumpKVJI6/Sd1nvmwICy1uzKvqkzmFQB5Q9wXZotNxH2F6j/sT65HS4T20sKZT
	clS5yMqS3qGfy/lFgPxcZ0prvZN5gt3VENDJjfws=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655261039;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vrFDwh/APEQZUcO96cdseW65FnF4eWOP7Rf1tnfTZLs=;
	b=GV1SIiohI+ALXKxpah7pdjD+V3osS7oelzrmj/egYvWbE2IA+zNzAYLJovYMyUcL
	PX+sjgtNiIc7fLjKmOCNP+RyQUTf6yWn3mdRmRBBQvfnSmuFVBVd3duAf61oWwteE1Q
	04iUdVK910NaCfBUG3fVUPaj8eh2fVZ9ZEB6Shi8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181653f0ab9-16c358c0-ed63-48bc-882a-4577062f9d0a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4df697cb48f1670afab739808a195a7ba651ab24e91be0b607902ebb6410c197
Date: Wed, 15 Jun 2022 02:43:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.15-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655261039
