Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B90133C7
	for <ddprobe@lists.linux.dev>; Tue,  5 Jul 2022 14:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657031212;
	h=To:Subject:From:Message-Id:Date;
	bh=WdKSUZChxWQkFLdv6uFZk3x5epOBC9DzP8RftgY3g+M=;
	b=Yvmbu3f2XJNkn99waQHLIVsAHFrfbUAotGbfSDRFzfHxTxA9bNEufND2u9Kfnlot
	BeTjcZFQA/lTEtl3J3G1/ituSmEM83jf6nhJrIDYq3KjZtOGI9xUKKdy+j7/cpK4Ele
	ktp2uMDGDTM0CE2FmGuIo4vlmCW4k4lW7ddnsimI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657031212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WdKSUZChxWQkFLdv6uFZk3x5epOBC9DzP8RftgY3g+M=;
	b=VgwsfNtbqFHRbQ7mPKgnVW/K+0C2CbnjC20+gDWXn8VuAeXaW8sLF5VeaA0/QFhc
	461FUwLUwHOZMZELX9yw9PnRXyq9vtZJS3+gnNQKMs+WVwZjh3xtBqfkl+oBJKoo867
	xeoVgDc8RxljUl+1g4yUSebj+A7nzI8ePb2+AA9s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181cec1bcfb-76f2ca64-f125-4354-8102-c75849a6e78e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2350258f2389de51f44c74aef0145e48057d7782537dc92ee25f00f92887234a
Date: Tue, 5 Jul 2022 14:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.05-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657031212
