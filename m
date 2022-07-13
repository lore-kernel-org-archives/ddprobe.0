Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D31C615A7
	for <ddprobe@lists.linux.dev>; Wed, 13 Jul 2022 10:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657708613;
	h=To:Subject:From:Message-Id:Date;
	bh=Diz4D54PHU7Fv+WovTAR7qwH1Sv21l5ruPQixQq6Mpw=;
	b=gqfmSmsOC3AIAQ13mkc9QILoG9JGYO91hnz4Kara6jTs+IOS4HvQc9zViveYg1ja
	vjxyjIJ4x/zAgDAsyyEp75ySAP+fW5a7XzDp7j4FBXdA4+xgdZw8jas8fs+qjzdE1w6
	Q7xt+f1WpjvBeolbSq5BRizSYjWA1tXoQOnISDhc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657708613;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Diz4D54PHU7Fv+WovTAR7qwH1Sv21l5ruPQixQq6Mpw=;
	b=YRG7ckHAjOmLmkM2SwnNHsLzOWLBlr85umhreGU/dty/1rYdJuU1NOSc5xRpPKR8
	3nPanep8voPhIR8+H0deDX2hS85ZYRRXtegtGiTRtDeZpJmlry3EBO/03Rd5NLIrI7d
	vPZ2kVs7YwpPvkeJt9u8VgNXah2B7PQcJWNYnSm0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f7220b06-9b16ee8a-a306-4130-997a-9a8dbcd79c36-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 77283378d587b520b40630759347b1b90b9dce20a1757c5749503683782dced1
Date: Wed, 13 Jul 2022 10:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.13-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657708612
