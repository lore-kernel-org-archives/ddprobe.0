Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C32428FA
	for <ddprobe@lists.linux.dev>; Sun, 29 May 2022 15:10:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653837059;
	h=To:Subject:From:Message-Id:Date;
	bh=l/riUuw3ZgD6hagqeK4T8/uqFExByYCAqdNr7qFMfro=;
	b=jM7/VSL4B9TVmEg04dDv/MNHAA655K6MqAeKgwSDrDUI4ulXwG1Ofs9nxb2wMoAD
	k3JlzUi0tjO91p4AaVE7wZ/uH1SdX1zmskNKDXL4gULhqtk1/JHhBkak9T68qjaM5gG
	WB7xvDFxEbu5tmuJ3cySRwN2I0A/aw4TycLuiJ64=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653837059;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=l/riUuw3ZgD6hagqeK4T8/uqFExByYCAqdNr7qFMfro=;
	b=iJDnz2UfKOuuq4SZi0PopI+hdVJ3Y7yucByn8wiBTeuHjMXDLdFDGJBSTTd3f8aP
	aiAG600q1i1QwMqNYZVqawdlX3CbB/QMLWmoUY24ljq1asVWlmSBJCnZirPCPW3OoK7
	8EgNKLqv5tn8Eb2Ff2VoH8KtUyoQjLdrxy8t4Ois=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181105ed4bc-3d573648-0ebf-4ee6-976b-cdf481b6c29a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8600cd029c84bb598478547be8d576e0d1bf6a6a1b882f38bf92996a46203653
Date: Sun, 29 May 2022 15:10:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.29-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653837059
