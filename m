Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A5AB2F26
	for <ddprobe@lists.linux.dev>; Sat,  6 Aug 2022 23:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659828052;
	h=To:Subject:From:Message-Id:Date;
	bh=rA/77U1cFB8qeiZoTlEvG7JeRO/eYggZQIc9SDH69+Y=;
	b=Qt4B3fVewgw5NVuceHzrvscyBCGl4T1E7xzrDbBTnYoIlLoIBW/qJ5fPNzsy3hw2
	jQCeE3SlssGS9Y8fTWOgAYVUV3fJcZPo/DiU6Bi4w392hVOkR68JdjugKdW2s+yAUiE
	4IBQ9jhG1XClpgHGf7R1XDUdoflok7X3xFy0qpkY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659828052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rA/77U1cFB8qeiZoTlEvG7JeRO/eYggZQIc9SDH69+Y=;
	b=Bs/wOvCxcbFFCh2L9g3FZKniHidUaEH1VGvbQVP1pThaXX61g0vGpNfwxsogFk6+
	o6Tc/jx0K09nXfx43zuffIOXxaC1RWHrzht8PGuGfqm5eI9zm8Rr6JTGwupSiW6aY0b
	5VzH7Xvr3/YwijSEMMteC3Ji1UBXbPsSU29JWRxk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018275762298-026eac1e-9e87-4219-bd5d-1be7366bdf42-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bc155c2b25b4cd17fc034c3be78bd36374b83b8d1a88b5202275a1c240302835
Date: Sat, 6 Aug 2022 23:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.06-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659828052
