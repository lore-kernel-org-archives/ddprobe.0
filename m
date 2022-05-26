Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17EC81113
	for <ddprobe@lists.linux.dev>; Thu, 26 May 2022 07:37:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653550679;
	h=To:Subject:From:Message-Id:Date;
	bh=/iF+g8I4FTysCbdKY32YlLOcmcvRw0r6szrR324wNAk=;
	b=Fzx+tQKO9dg58e3oV36bzPMoIOCS06ZTVGQYcYqUb50RwwAgbY36lfP1Qga+LzAT
	Q2wdCqCPv+rFdtRyp0tNCH77JkMLpXuS7obA5Q3vigXT0o1CtCbblVOjP7g8K0GI7Ay
	krSS9LVdMIXy2PlDFYEJcX7sMzF2VQxd+Si6/fuk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653550679;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/iF+g8I4FTysCbdKY32YlLOcmcvRw0r6szrR324wNAk=;
	b=V++x46fGoF4RzzfLtooSMTY9L06cpJLuvWshAS2WggWnUer6mRYGruMzJcBKZkVZ
	irNlPisuS+UvE0b0ht58MlhfqyE3w32CnefYDVYssJhLiXKqPMMufECyUF29j1BtXbR
	0fpvgerOAyhjxL8+FUBwnEIZMUsJS8gY13/DKNTk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ff4d04d3-495cc959-0641-4c6f-a382-a6a157e051a8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e11ae78950098c1b0bc7d8d869ae31bbc0b42d378446b87eac3f21b06ea8cf6c
Date: Thu, 26 May 2022 07:37:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.26-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653550679
