Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 074A17A
	for <ddprobe@lists.linux.dev>; Sat, 25 Jun 2022 06:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656140212;
	h=To:Subject:From:Message-Id:Date;
	bh=Pw7fqVeuuH0b7XLI+JPtdeqAuBRLjPl8GI67bKdNMiE=;
	b=KDA8hPyUKFOuX8Bh5SeLoW9owc6EeRt+I4cLefHDz7qlr/GIB4GwJtGExlfEGbNl
	ZLDan+vAswy8M8qZrrrP8TrHB5KnQravVf50zC9P95EsnrZhL2T6sK564jq+VLT5zzP
	Gj7j+Gy8JIdPn57mfAneHSlPikIiBMm1H+HT4xcc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656140212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Pw7fqVeuuH0b7XLI+JPtdeqAuBRLjPl8GI67bKdNMiE=;
	b=Ujaf/9gEsRAVe1SNO7Arxn8XmFp/yYQLgHG2Qz4bEfJWfnQ5kLgyJNkfuEG3oc0I
	BMIwqD9w4dG4OcZY6isH0kYRIobv+LvMFk7WfcEXWGugYK6C45iwKtcsh7eZVMGWlhy
	uWF39jLPW6oo+Kqfvn8IdugMTDTwe6eFoVNALb2M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018199a62829-841348bb-d3d1-40a2-9187-5dc2e4c69f49-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 581fac894fe52fae4409b8935d95a5cfedec5250157e3c9ee56b6a101898b870
Date: Sat, 25 Jun 2022 06:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.25-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656140212
