Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 216466457
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 22:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647901585;
	h=To:Subject:From:Message-Id:Date;
	bh=l5mpo7F5Y1T5IM/mj72nGboVP4rs5SV1J+HWhpDB598=;
	b=SCpDSy258wtylaoeoArpafQOhRurf/cVJmklGBCSUTvxmrI9lfxkpmxq70n/f5wL
	bmYXkVIpcXvxVrsa5ahHJTvwpBqK1t+3F3mYTk8J8qoDBQvIzx6nTnYyXXugNAEEYXh
	kI6KZFI+alEP6EQ1nGl2XLoDBY3XtjIe5zwEvtZ0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647901585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=l5mpo7F5Y1T5IM/mj72nGboVP4rs5SV1J+HWhpDB598=;
	b=Eji4de8rpRtvEgPppkUgYVnU18QOvfLFGfMlMrvNocr9ELP+Zkq7J54iMqM6tmfK
	q8YvS0fQh7+4+Jr27UPlnPf4y2aJQ+sH1RXWY5MC8V6PpQYVecIIzY8DcML7Q9w0NUu
	UJkOPqwsTzpe2T3NlCXR/x9zQupwdaaVygKj8q1E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fae96ad9d-41554aee-a1ec-4562-99cb-b258d2e45e7b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9e85b1a95374e9f0be7193e8f1807527cce9187c14677c75b00df67400aedac9
Date: Mon, 21 Mar 2022 22:26:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647901584
