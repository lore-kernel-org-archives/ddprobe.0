Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A00823A1
	for <ddprobe@lists.linux.dev>; Thu,  4 Aug 2022 11:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659613852;
	h=To:Subject:From:Message-Id:Date;
	bh=LplEmZBszAwQjkHd2svy1o8xzu2CYoeisRpbcC4CFPw=;
	b=ZHslnCedtZ+J45Md3w+iCrKYe+/yXN7NOTvokN2kVqivHHRrCJtnlRzcGqqLe6ft
	fcOfapzABFZ7wBLa+WJCy3sVzbf+H8haM2OFX1rqh70UtPN65N8wJBgg3PRupZ/OgF9
	Npd2w4IkS0iTiLmafJ3imWJCQXIyJSdE4WcMuMIg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659613852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LplEmZBszAwQjkHd2svy1o8xzu2CYoeisRpbcC4CFPw=;
	b=PnDA0OgR+s6zkV+0Ci32Nridxn/2iyZRnCBdPT5inAwgV4AseNA/cwI8FORi1WHg
	ZTX4VZy5pUiCG04YavbSpEOTB0T3DcraeVyg1oQa0kcry5oItX+4w2lE0KhRIJpB61P
	fO19xOVnUh6nRwWfFTabrkeAlp3jzzgTkGUqZvoI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018268b1b39d-bf84d74f-d3a5-4e3c-a2fb-0eef0252bc26-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6f9f4877cff3f9945cb9d90e16ff054f57e756889fea50b8a21636b3cdf9ddf1
Date: Thu, 4 Aug 2022 11:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.04-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659613852
