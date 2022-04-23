Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 915492F2A
	for <ddprobe@lists.linux.dev>; Sat, 23 Apr 2022 16:16:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650730619;
	h=To:Subject:From:Message-Id:Date;
	bh=qNoA4BOq7Eo5S3Cn+h6ScfcAQQnfqG2TKrSHEfC1FOo=;
	b=YLcuznVZwfucHR3aWwp3LLbQ9TZg5ffvf0ac+3k0uF8wNQf4qEI7DqTbjFGaL3tE
	m2xTmgLNwQKdbf5zWidl56xXb+xYd/nHb9voTUHkFpxz6DlBUJSxUCcokuhGSfZDpzS
	E94Rqn3sL32JO2ae5hOa7WCLC7Mrd/18TyTGOxKM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650730619;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qNoA4BOq7Eo5S3Cn+h6ScfcAQQnfqG2TKrSHEfC1FOo=;
	b=YM/rYPFsa6hSxxBlTkkKGZ1E8NszU+qq/5rm0mwcEjsvShrS+D1ZqHy8X8TUkv5i
	PsGUgZ6hDQp65Oqs06mLdjcWdpsR4DTAjle5/ABW3W6Aw79MAe9TqMLxVMd9eyJqni0
	qQBdDfLnhg8aOwis67Dqa5pHh/nXn3GXFK/aQojo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018057364dd8-592ee389-a2bf-4cb6-bdd1-e72b37700b6b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a8052fb1859ac29646605bb2ba4f164d9cca9a283c2d9156a284c3aec657fb29
Date: Sat, 23 Apr 2022 16:16:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.23-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650730618
