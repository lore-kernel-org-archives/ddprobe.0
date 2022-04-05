Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 105583216
	for <ddprobe@lists.linux.dev>; Tue,  5 Apr 2022 20:54:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649192099;
	h=To:Subject:From:Message-Id:Date;
	bh=ub8tia014GK6wHrVcCrXBeviYjWKaZMmTKpiH6c3Sz8=;
	b=R2O1pErul+mRBfNoOo8l7zeMVauxOrMi+Nfq6n16Jpvi0nQTAg5mSSU+emEU6QtA
	PlbaSXslsObxG/ZvFYJbRNFgR8F7NkjmsuinG9Kj4/sHTRB/XiKe4f6O0h+ocNiX7eM
	35rWh7IM5JHfXWh4G3DWE9zTh4PpMDwe5Js0RD1E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649192099;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ub8tia014GK6wHrVcCrXBeviYjWKaZMmTKpiH6c3Sz8=;
	b=C+ReV/zLZRfEYaxGZsG84iIagcdgB3rkgQ/I4ATeb0m+woRmnwPPsltttYB5DDZ6
	7H8ECjG2Hl7CTlVaA2JBdvOSNtwqKDYYuqKSksXGAG4Jdz4ncUpT58cTfmbLYs2tJDO
	bajkcib+A5QdE8os27k4Vbm+hqp3qkWFf4RPxfTg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ffb8259cf-46bd3c85-c549-4149-a52f-afc3f6aab943-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6e38515385fb8eafc2a7dd84be62b6cb6deb888261a9c16a97dc3257d44a242f
Date: Tue, 5 Apr 2022 20:54:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.05-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649192098
