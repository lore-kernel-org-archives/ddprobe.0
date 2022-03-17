Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0E6E2F38
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 10:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647513685;
	h=To:Subject:From:Message-Id:Date;
	bh=KAfbmaBWxQtEN5AcqF41AM4Jw5Cfql7AxOvBRc4sY30=;
	b=Kwmiv/UjKoxuaJSgcnokt0DLoGIHNONz785OEqJgzieqiyqeKjCOq+8ShG1+4tL2
	JEFIqS9kCVM7Wa8vvoB0599YCrkN65ZPylZyK8yXCoClQIAZddX9gY9ssFkexzpcNdL
	YzmmFI7hEI0bZPODRnRkJte7hIF+qNDrbT6xRvc4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647513685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KAfbmaBWxQtEN5AcqF41AM4Jw5Cfql7AxOvBRc4sY30=;
	b=iPLjKRG1EUkW5kvuxDe6Bxk4M+5okMVUiz3EHwOx7ph3GTFjTpGJKk7uQb55Hkiq
	pIvuFuKEapaXuTGnApnY8YqAmxbhJDwXiogccuK3Vt2hApeWIYtM/Sw4SwRSlRl2fFQ
	KvTgNmCr9TJKWYlhjEB3RbSlEfBmLhXOYZba/8hM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9777cb2c-a3a26b64-bebf-40e5-9052-7a6a8ac6de95-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8b4468585c05e850e392111932a59323cfbdaf33200a46fc6faeb6a8c442845c
Date: Thu, 17 Mar 2022 10:41:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647513684
