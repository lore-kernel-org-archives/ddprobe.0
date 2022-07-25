Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A2E47E
	for <ddprobe@lists.linux.dev>; Mon, 25 Jul 2022 01:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658711212;
	h=To:Subject:From:Message-Id:Date;
	bh=pXHSHBY6kfNZPfHJPPB44z2gizfJrxNqjCu41q7Tlz8=;
	b=jLSydl6yq5iELV1pxQcAcF6tt815aFErxphBaf6lhf9isRhupXk80BLqemkQnPr/
	ttn7IXo6CyyKZY41o2gCnTJEZsdlQkobNUqtxDVbXYN6jCXoq7bYGYJGin0LsCXrDCR
	J0c2qkNXPQKbCt2YdPRvdS14b3ege2ZDCSniCjyI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658711212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pXHSHBY6kfNZPfHJPPB44z2gizfJrxNqjCu41q7Tlz8=;
	b=IpVOSLN/k0+JoSQPwsDWfGcWCObzOpeOnA8NWkxhXgVECvqJojHaV1cK8WXmTK2z
	u9pN58eIRFzNFx5GRrUDtvUvTMnc3P/UHaVjwE3BB2oyz56O4HD7HgNwa0Ws8PLc3cL
	TqN2NnazZfjX+IMyg+mjIKATq3mazzeUhk7A1v1g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018232e480dd-6062cb22-2383-417e-93e1-0aa39bd313a8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a9143545b41d969ce521dc7fa11a475c97036fbb49198f6f8cff37c4b25ec924
Date: Mon, 25 Jul 2022 01:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.25-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658711212
