Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D9E47E
	for <ddprobe@lists.linux.dev>; Sat, 21 May 2022 23:41:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653176459;
	h=To:Subject:From:Message-Id:Date;
	bh=fxwA6baldqZTtGRtONYtmgSRzDKrX18mwalFQ7hMS9w=;
	b=er3uRG9Ax2J9MoiSfO7x1QjVf4t69adVaWlmxf1uI0MmeRBxESw1bNTfIfb3JURM
	lNa9WcfXy1MTKE9S6m/39RDpPYBct+C61tH9SsSt7htCcdBwKVx2WzcXAegarHUD33V
	Pb/q3cQm0nMjdmQSfzCSmGbdg9UZvIl7wQQCXwfc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653176459;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fxwA6baldqZTtGRtONYtmgSRzDKrX18mwalFQ7hMS9w=;
	b=fdyyCQSW/bfcvnzxySiv9EzSUFrlAGmwbvEutVj/wGWBhpaNIsMMljEsjhmR8vdw
	ZDuQSbONrhzjFQP2fqkG3M13o+AlvVH5W6lYMltfitX3JJPKqcoiAAW7ISgjmF9ii4o
	AuGu7MZlNG1mZVnRWTItzx+ZFifPSNHdfmwxk65k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e8fee019-8869e438-0c26-4a27-831a-cc4f4f852c61-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 376a489ef139a68589a204576f04fe254b271997c91006398cc9f8457625f137
Date: Sat, 21 May 2022 23:40:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.21-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653176459
