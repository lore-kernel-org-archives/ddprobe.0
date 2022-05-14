Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D88036A
	for <ddprobe@lists.linux.dev>; Sat, 14 May 2022 05:57:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652507879;
	h=To:Subject:From:Message-Id:Date;
	bh=4EDfcrPPPuX1QZsYx3LzQOjkgDPAzXFDnco6qGyU+QQ=;
	b=dtD83c8wiq75pypE1w8Xg5UVlAZWaUMafF3XL7nYktdpG9XCTRBq5FpvLey4Z230
	BQsRdKkeA5CjFcuewZf2NQ0KRqMf3r/cBMlIlBrW+UIHWCPa0nnWuxNxjbxG+2t5MNb
	IhVQqJvi2RsyG1SVYu2xosTQqdGtH5ssOY5yqtEM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652507879;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4EDfcrPPPuX1QZsYx3LzQOjkgDPAzXFDnco6qGyU+QQ=;
	b=XiWgsP/NmKvjnXNzc7F9lpoxsDYAkHFv97a3GkgGJoSMAT41TK8u7yTR3bWYSXTY
	6MVht9hUuCXAYvkH1XbMLTj4THSfezUEjUsr/se41bJJHInYy2X8pY6vri6I9MzdYjo
	DNjApwpnhlCByOR1nVlMjGhTCOu/ewFfqXzGegKE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c1252775-07b74339-83ed-412b-8090-9490e631c6d7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b35b46aba547d856ef2bd12a6cb1a5d55ab3438d892a82185a57029ff1c9f17c
Date: Sat, 14 May 2022 05:57:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.14-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652507879
