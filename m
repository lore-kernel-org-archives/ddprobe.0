Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9EBE182
	for <ddprobe@lists.linux.dev>; Tue,  5 Jul 2022 01:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656985012;
	h=To:Subject:From:Message-Id:Date;
	bh=/k9wU7amORUAkAsBNuTqQA9/N+/tyg+Jg2Z39DBjeKI=;
	b=I6VSbIvfVU1whxqFaSIRZNuW6Qpwi+uHpRXHfE2Hb2YQ3zWoxsRsdkPJEQ/Zohht
	BMoZcPdaZvRzEa0U7ro6etxDetp0jWWbG6aEsWdK69WA+npFZYn+JiIkbKVq5wJPo65
	nWwTbnm1bTQ/IQsPQ8q1gWXVhv8a9MvVnA1+LT2U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656985012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/k9wU7amORUAkAsBNuTqQA9/N+/tyg+Jg2Z39DBjeKI=;
	b=U8s6PE4waItwr9whx6cxEWMBCO5UCa+H+V/OG8/e49LaJAAIp2BUaUl5GLTcCc4R
	03uSd2k83anHMLl45IyrwU5Ey1V01wiKXMDbehCsVqseUH0eGzpBGu1rNLtVN6AYE4j
	NC4mPDtjmbdofi5m9+5vd7TgUPWFNWS1fQK47l7A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181cc00c820-8aa1fa20-99ad-423d-b55f-cbd9d73d3663-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8177cd2016ff645582950853cb28fcd388704b7870e635e064487fafb0570b2b
Date: Tue, 5 Jul 2022 01:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.05-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656985012
