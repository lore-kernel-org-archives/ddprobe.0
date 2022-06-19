Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9BD07B
	for <ddprobe@lists.linux.dev>; Sun, 19 Jun 2022 08:10:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655626259;
	h=To:Subject:From:Message-Id:Date;
	bh=xgFDa29QQyCDlaAiF/8k3OATZPaXJaHl550xY83bq60=;
	b=a3mcMtB+dFQYfmZrk0gKZUT6GCMLOXUaoyu49wpLZWJPjBlLTNLC2OmLE60t6Ctv
	nuQfcOpHvdLcw/jO9ImRijRKQYEu2I0A0Ww5KwCJaV5KbY+1vuCllhPX2K9XyJO+CP0
	+4ZvKZbyhupR+SuaFm3poQULg8aP8Auav8NYI/HU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655626259;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xgFDa29QQyCDlaAiF/8k3OATZPaXJaHl550xY83bq60=;
	b=ilrfBOQQrfvrx9G/EsyuPFI/Lvf/77yQ8+fV1wfddpJ1p+z6T3oPtejSgo6J96LO
	AWV1RUal96jpYnskfM01dniArx3jhKIRvDXA7K8nW6N7D8fhM1uOeBC4CGoLbYO6FbB
	5uI01+9EQkglEZOHCBAgGGlFWudzz4jhAqQXWLuU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817b03db06-56ff5b65-07e7-433c-ab8c-db9fcbd47c94-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a05ef02b515d20102e2742a3738d3fef9cf22e1fc76bd8704f53f3f954be6641
Date: Sun, 19 Jun 2022 08:10:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.19-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655626259
