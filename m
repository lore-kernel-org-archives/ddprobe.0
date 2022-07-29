Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACF8A538A
	for <ddprobe@lists.linux.dev>; Fri, 29 Jul 2022 21:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659130853;
	h=To:Subject:From:Message-Id:Date;
	bh=eeJpNQlzMj0kQT+RPEHyIZCSGyaMfADE5bFUqMV2B08=;
	b=IXMetaU01dl6lscIUpYxUn07Z7xMNVBd+YpKUTXeAr1P4SfxmWztIfLrvHTWcfmV
	DsZV1mIRYpnARBUZZ2eHZoJC9nX+aPGQahdTeI7u2vmIaubTy29Yy5XB6WiPZoQ7wpl
	KquPtK/lkCdSMtdShrdUl9pIbS+VdYuvkgROhg4g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659130853;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=eeJpNQlzMj0kQT+RPEHyIZCSGyaMfADE5bFUqMV2B08=;
	b=NaYzAR9LxOfyxX2ejd/+Pk4FXL29Ku+r+u09i0KUSITCWKJN3ICN6MUdtiOdfpfJ
	1oGsEH11Z/JOF7cqLYrrhDUinouQhFxMZd3hOYzZWt41X8EcKgicitz7sxIPxUnD3K7
	f4c7ion9m3PqUDD5tbrsqflLlQ7N/sUn2O0q7EMI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824be7b4c2-6b9d76d3-c868-4a39-acef-4c982e5a8e5a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8762541dea94200fae7e514e20334784441ea968a35ad1a2449bbc975a72df78
Date: Fri, 29 Jul 2022 21:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.29-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659130852
