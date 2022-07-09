Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 830A2EA4
	for <ddprobe@lists.linux.dev>; Sat,  9 Jul 2022 11:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657366612;
	h=To:Subject:From:Message-Id:Date;
	bh=/UkCRZsBKlEi9mxjIDb3g2V+5J1qrvd6vyrA83mEeXQ=;
	b=Ajxt9tLwuQNQ3LKrxCsMtNf//Zv4Uharge00Z1F5EEo6aCQ13jTnOvnkVGZNTTgt
	3rjqqcj4DNPlae53R/L07HJ5UGispDnIFZgnflaar/8EQ3dhz0dBpLri0WZempRzxhx
	+ctsWnefmo9wauJTd9tj2gcFT962zYbE9bJl47L0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657366612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/UkCRZsBKlEi9mxjIDb3g2V+5J1qrvd6vyrA83mEeXQ=;
	b=GoSwHKZ/G7qzrQHo368D5EyHP/+pzzUpBjPBpjYnF2DBa9/myRiB0T+PxBIZkXNN
	RJDl0ltGN3RaZWPjSYoNX769cTjXhMms9L0oUYOxsZ3/pNVuuR29TN0P+/5VzTDVDWu
	HO36K0+xrCW4q77yTbPoTldHFkp9sETMmoA78nlA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e2bf895a-a4681977-b63e-4641-bb1f-54cc616a2804-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 89d71aeabb10be43dc36431fb7828dd3eb569eba1a0676f7b4b50ddb2002ca79
Date: Sat, 9 Jul 2022 11:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.09-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657366612
