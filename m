Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B10CCED2
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 18:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647283585;
	h=To:Subject:From:Message-Id:Date;
	bh=vcDbWekYJTGgHlpri8Ys9FrqaB7gt0qdc/DIzff4/KM=;
	b=XE6fTtVYmTVMcnR4nbFB5dsLPBa8tI+FgzZTCibacSrmxz5vUjiISV14aA2orMAj
	i02n0M2NKV58B28ANxZQ86KXhU5+7rwmtWH1CNc3q3tW/2KRC6Yxs+n9NK6k9rmxfqk
	J+CICsjuKnWUp2eO7QimeDyiQHaezdvY799CRSTc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647283585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vcDbWekYJTGgHlpri8Ys9FrqaB7gt0qdc/DIzff4/KM=;
	b=OVAEkOI62HAbMGkcS9rDMQ+JR3LvI411Htnxf5CKfT411kjLrNlfQY/hkekPECz8
	u2G+sxwv4Ph4T79Qq346eCnnExqyWeqN3EjN1JbVwwLBq1HEh+pCioV6MCIx3FUezaX
	5GirAHW+l5n/J1hdjkarDMKjzRt7F6GkGupPstEY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f89c0bf21-e4b6fb7b-2855-4d47-9bbb-919b7191ee10-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 699900c8da0bf147e4db49e793b2245f78349acefb1171ef3dca4ac5d30cca40
Date: Mon, 14 Mar 2022 18:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647283584
