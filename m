Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 248922902
	for <ddprobe@lists.linux.dev>; Wed, 15 Jun 2022 23:09:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655334539;
	h=To:Subject:From:Message-Id:Date;
	bh=p9WOweQdkFTAj9R5B3/qvHxBPhlZC1vkjkGCQRt0L4g=;
	b=bAbK2UPh2VZpyTpjMrkn2HyuhHQFVvzXD3VhW4dCb5tZrGYCWGXNM8x7+/7SdlK0
	sMomUFhc5yCpJ9FdX6hBMQdEb/IGvICazhkIGDm4nPHeWpwTTbeZPZRnDJnd6dWTHMc
	T/CVEy5ia8NYkCp0v9O98Fy01RtCYabXmy9vGJLA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655334539;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=p9WOweQdkFTAj9R5B3/qvHxBPhlZC1vkjkGCQRt0L4g=;
	b=hHRvu1ViKtKiKc+EqB9sZi62ehpZ//QFsV+M6jqB8nhRJKoriClfgtuUFo80z9JR
	h+HoyNTytLd8tVINX9b47dHL17NrzP8kopaYMlgTMvtsYtNTKQGRC8N5nuyDIbK2vZ5
	vDGhWaMHlGyqJdyJsX5w4s463/cmSYmLzMjwBmeo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018169a09045-3f4b1c12-7101-4e4c-a8c6-8d8a18a41107-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: de710e8ef96bf06c873bd6a739cb6e8ac91321cdc61b06df1695590460154ca1
Date: Wed, 15 Jun 2022 23:08:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.15-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655334539
