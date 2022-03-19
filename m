Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4802C7B
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 21:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647724284;
	h=To:Subject:From:Message-Id:Date;
	bh=A6Bs3Gnnf6Q1j/RlqXIe+s6VAXnVdpdoeRqNlefmy3c=;
	b=ZwmeM7Oc8jAlDYJjaBj2f/s5mONqsf5SmI6OeQh3uV2wl6MRMBtWLfzgFxxgYDZG
	3zzM45aAMg54q0sIipuRdixQBGl3fJzRb8RpYMxf0VXSIfGLNYKJh4P2WVFBRQXoAQo
	nxNAJkwYYyhE/xKh3eTUtKcFy+NBErCQSmc4DwMU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647724284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=A6Bs3Gnnf6Q1j/RlqXIe+s6VAXnVdpdoeRqNlefmy3c=;
	b=dpycg1CR/0qwEAUVvtAQChYrJD9TlUcPJJWkqk6uO1Eh7rI51f+lazSKgIkQwhyI
	NLforxBunGp+ZLWXPEKOdyB0XOG/zTRFVtZGTT4im1unPITKQQNuMetBOIbWcnPoOMD
	WEWM+btPFkwSuLR7aXLgCpdb3SSGBCX9reahFe+U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa4054b32-12472165-5e92-463f-a5cd-0ab07d925808-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9df797f3b49691d4e265fb892b6175046efca51d8cd720483c92bb88d6de9df5
Date: Sat, 19 Mar 2022 21:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647724284
