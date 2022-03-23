Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E719E6AA0
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 21:34:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648071299;
	h=To:Subject:From:Message-Id:Date;
	bh=VuC0xLZichmm6uDdQnFgwL9da0C8Waa4ezqgyiRZ2wg=;
	b=B+BRNB+35sqCJ6fjpyX/A/+mHzD4hwQE+JRYK1b+JYOQLN1FKAsJ0Sx188jxR31V
	CWyM3VLbG6Ponkmr3mNcxB6F9BjHZnqnXl9/ehlv2jO0tLdq+NKP9oUS6OwlrYocAho
	DjN7oc9NO3hT7j/VkYYxwty2Bq6mgzhDlTN/3Zsk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648071299;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VuC0xLZichmm6uDdQnFgwL9da0C8Waa4ezqgyiRZ2wg=;
	b=KgNxeawEXf+8DUWMtRopPCb3iBJ9r0l9iLiiSDhN02J3QnxRGxi1vZ70HsbF4Vwe
	3JkT9h2MoOgQmROeLzZiPP+IRxalqhvi6kFUaCp69QHQPLFQWU1ko5X90wM2UzrqgcB
	Ymxm8zgdJrotnzsANZYQ6FjwZRCvjq2g4o5ove8U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb8b44cd4-b7d41c2c-9753-401d-97b8-f5f05cddefc9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 41f922d5bf5e34310dfcbfff5f8134d31f2647d97ce89734a365a7c4e25d315d
Date: Wed, 23 Mar 2022 21:34:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648071298
