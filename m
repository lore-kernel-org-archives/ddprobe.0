Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0875D28E1
	for <ddprobe@lists.linux.dev>; Wed, 13 Jul 2022 10:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657707412;
	h=To:Subject:From:Message-Id:Date;
	bh=A9+qAFehIIGght6Dkorl1rChwJUpDZVMjcsJ5hRrdjI=;
	b=LwptO95nNjyijmT4GTIiVwVuiCvWQyDzpMShVAlh0echsvEMvpoNBuXCAw4xvhe1
	UbiC+kBfTYNpfVpLurvmoBOEhWbsvWaBPqYU/8PuufsNXf3H71ad2OkixtIHyeRcBM7
	UHnTkEe0gPwyNHqa7tNmVRljqvLgJxAAs/31Aad8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657707412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=A9+qAFehIIGght6Dkorl1rChwJUpDZVMjcsJ5hRrdjI=;
	b=czhig04fgsRn5Qp+vjPHib5K3nH9Mf5HZZ8WbJDuBYj3szP71tbITEgWxa3eJjcF
	M2sqGgr35l2TE4MQb3H+1bB+yleRGnj3YY8eamM0/xeMr2GbOUYwLgp4GPw8gx3b+gk
	SJ56SJw9Ls/njok8gCm8zpsMUKsnc4ul7tvlFSQo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f70fbb4a-7c1405d2-0de1-46df-bf67-59f2efd9cc94-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8a90fc1b686e66431dc02c4f214e8f2a62099e1cc20cfb955b4d0771e0b3f0e7
Date: Wed, 13 Jul 2022 10:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.13-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657707412
