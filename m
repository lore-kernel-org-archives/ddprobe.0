Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17F1420F7
	for <ddprobe@lists.linux.dev>; Sun, 22 May 2022 22:32:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653258779;
	h=To:Subject:From:Message-Id:Date;
	bh=dyIR29WVjCIS14jn+asUhdSbBuq3cndJle/BdkWwBV0=;
	b=NvV4JN2Qkhb2lY4yFFb6deN9OMKgLy6rVWGYG/VZdR7MKYstqBEqWhnAbC7BC2Ig
	/Tv7KYJMjcBZj/bDhH68oRqpNF1tYH5TYAwKNUTOUceDvkftpl/F+vLiuVO+GNxKepE
	ZNrTMrEveGxFLonogYyFfbvp/3ehHu4VAtoanyU0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653258779;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dyIR29WVjCIS14jn+asUhdSbBuq3cndJle/BdkWwBV0=;
	b=YXzkWEslTQ1vd6X38HL3CcgfaOKzcuoHvhl7TQSYWRTQkLBqHv/6NIodfQefH2PG
	oXsSumLIUy5H+kxUTQH3e0I+N7KpgYHIvQthM28w1z2+WgNJULo+4WcHvBaFplU+SOT
	AVO9Dy7PWSYZJHgawYomYEdf3GvpntTlquNrJYcI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ede6fa9c-24f0216e-62ae-4467-9559-af4c791ae824-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3f46371e3d392336ba31f59171ae0390340dac66ce064594b1d346b58db42b5e
Date: Sun, 22 May 2022 22:32:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.22-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653258779
