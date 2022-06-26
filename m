Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E27617FE
	for <ddprobe@lists.linux.dev>; Sun, 26 Jun 2022 09:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656236812;
	h=To:Subject:From:Message-Id:Date;
	bh=dZip82lcxyALtlP44IwKpBH+MLHJA9txCV/T5+AfrsU=;
	b=cSVnAGLaXWDv7D6ggyv6Iw12lBgPE+tyQIaYKg2P09aD1h67RxXI+tIPjv0tXUBi
	mGykCyHR4nHAeU4VEboSFbWsweZdV89oqPK2axZr1jleNR+fMbLzcy5zgF/W/+yGOO4
	572fPrhmci1SkzL9EqcpBsw8VHTSgIYKsevvOvrw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656236812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dZip82lcxyALtlP44IwKpBH+MLHJA9txCV/T5+AfrsU=;
	b=Dq6H8MsDFAlJXpPgvQG6wTDxMghSUHfjYmZgVCqu+5O5M1Qz5KvLe+LnBaQUYPUt
	zuhNf4mNAdkQcaPnomhz80V0hn5cuCV+NrWhfX9widtDnP0St5K/2dEM+0XSq5Gv9He
	iM4D+6SsGkPJK+yBdwt/otl60FgJx9hLBbDmom5E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819f68281a-721bb333-16b3-46b7-bee6-7ec236a14395-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ffd29e5642261b3d8e8b234356c4fcdbd48c4965ea1fe61a67f2042ec8660236
Date: Sun, 26 Jun 2022 09:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.26-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656236812
