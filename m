Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00E457B
	for <ddprobe@lists.linux.dev>; Sat, 28 May 2022 17:33:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653759239;
	h=To:Subject:From:Message-Id:Date;
	bh=NIMdcN+mCpX8Nyh27bYOvm0h6Z+v1OI5LNiz0S3ZEqE=;
	b=iwhE7I+pLHV++2O3pswixcjXDA8iMdsZvNIllG2jWY/WLBj5ugkH8jtsNndZ3bXf
	WkUCXYzYUDmEi4VwooDwt27parTgKn5yco1OLHAiWkvJyHGbVng51Whf+GM31phNnmt
	8zuUoTpOhp+90a/QGrVvXKJvNZ/g15ES8LkeU6Go=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653759239;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NIMdcN+mCpX8Nyh27bYOvm0h6Z+v1OI5LNiz0S3ZEqE=;
	b=OJrNkS0Y4YFwpwxT1PU+bEdyOPHHkdWputLlmGMItiPRKAHJIh+ulsaKUyfj0+6x
	/S+smXfooYhP+jLOQCKHmWpgNCTD98Xkwp/mFZ4BZ+5LLo9g68Vy87DZWo3jS9zYHfp
	E6mtxHU8iwAovO0WmNBdAhF44MIgGJkE5QJaOKWs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101810bbb646a-692bc9b1-908b-46fd-941b-9a38d76042c8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 28798ac9d9028578d8f45e7236fa60e9539797e15f71dc81dd3eb36b375ad1c4
Date: Sat, 28 May 2022 17:33:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.28-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653759239
