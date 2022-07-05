Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A35F7C
	for <ddprobe@lists.linux.dev>; Tue,  5 Jul 2022 04:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656996412;
	h=To:Subject:From:Message-Id:Date;
	bh=kk86oOEfQZ2IzWQMrmE6mD041m0W4IYRCcCbEUUUmW4=;
	b=KbpH9HXODIQifrPs2A9tuX7IV7m/WepSs5mhwvm9mxFP1lUMUQRRbzXlGJ3cL35Y
	7Tdx7n3md1e9BGS4AoA30lteTDOE1bSkoZ/hcsTonIZK/9i3NJWEtzmWfIK/YXPOfXF
	QZ71Gb+M5oK8A6D9XL4q4hOFbkbL0AIWS92IeIiw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656996412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kk86oOEfQZ2IzWQMrmE6mD041m0W4IYRCcCbEUUUmW4=;
	b=DylbN0wSG4YdaromU07tnPCfKpfblf8Dg3xcJ97U3XLtjU2/2lNiPxoFcZ8JFMFj
	xjrtFKnKGwkfXnZuJbTXeJ2sseEBOjoWit21xRhq4fRoMP5YOck+a6j68rroJsn6l6E
	yW94etv05EX7OqPq3vz+0Js+0CgAAQT/DPkLUZ6g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ccaebb66-9a8aa8bf-ef09-4313-8dcb-9a2863a95cd5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bff4f265b57dfd7a401ebfe66c15cc5ee098dc1a4826973c0942d9bcf9ca9f37
Date: Tue, 5 Jul 2022 04:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.05-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656996412
