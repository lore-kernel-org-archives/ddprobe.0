Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E0B31FA8
	for <ddprobe@lists.linux.dev>; Sat,  2 Jul 2022 18:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656788212;
	h=To:Subject:From:Message-Id:Date;
	bh=yToYOFRn12A3xZanvIKpQFtj9sgFoLxlaC6LeaZ8dQo=;
	b=U+yXmLjX8JDeCGOofWFxYQRKaBnBCTz/05KARwsP+l/feT5Z25Rn3Z7ZKPOVw2Fz
	sis2+4fa30EFvG9NHlicev56BVkTfaObO9u5iEG4fS/3oQcWLXCijIonAjWXvsMTVMq
	XTlSF7B4bsh1MjbOzo9NoX0oZ7JsTP3Rfl5z7BdE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656788212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yToYOFRn12A3xZanvIKpQFtj9sgFoLxlaC6LeaZ8dQo=;
	b=EXGz3XxPXF3jxiooJyySoa7HJ5mueZgiGqzP5EzTXNrpTnOaCVMSHpSwCJ/9W5ew
	ziFDRYVtNqcCCYSDoBqoBE2+4518mheh35KnXCE+yePS8ilI99aNvrHW0itMtQPez4Q
	48df64f24cTHqUZe03JiUSApRQiNi9yu4NJwNV8g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c045da58-7cfa353a-979f-4b89-85a1-551be1ddd918-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ec81b5389dca1224a4def0ae208f63ed0e73c6a7b3091d974520a1d103145840
Date: Sat, 2 Jul 2022 18:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.02-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656788212
