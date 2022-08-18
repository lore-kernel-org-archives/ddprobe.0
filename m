Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6927E15AE
	for <ddprobe@lists.linux.dev>; Thu, 18 Aug 2022 02:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660789252;
	h=To:Subject:From:Message-Id:Date;
	bh=4pPqDDF/smDCTkeCh/FM0fvxgwLtWxMtpAxzS2mS6zM=;
	b=PAV/qbAIyeIuF9sB8G1GMh7xbTchN+phBc8Jsqr96Sb+GJYgA6LkJqzc3bnTyorn
	WYvzZknmXgiCNrZU+WrgHqhIgUe1SDkNKsIz3ZkVMCO4plrCyamiSQqzrgW14fjcl7M
	8IfJe8MMgECNEVR/QkrgvJObY29Ypzi566t+qJhM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660789252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4pPqDDF/smDCTkeCh/FM0fvxgwLtWxMtpAxzS2mS6zM=;
	b=JQkp4N+oDd9JGnX+P7IyDCgcFevuecMDV/9Jh3+5gnWlcpJHu46Eby5GBvGMar39
	VE/hDyZiQdlQmaqA90BMM6nIDqpgY7800oi6l2rjxTD315Om4QTPSWitT+aWDoOBT4l
	82UAYNdRH1r5BtmnxecPrh/0H1A10Xk/QUS3XLqc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182aec0e1dc-b08e52e6-08bf-45a3-afd8-28027556e1fd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b40883df2ff512c203180b7e227166805d885841548f989c20efbf56dd629fc5
Date: Thu, 18 Aug 2022 02:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.18-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660789252
