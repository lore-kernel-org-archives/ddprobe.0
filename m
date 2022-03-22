Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A96F1A31
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 10:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647943284;
	h=To:Subject:From:Message-Id:Date;
	bh=catxFuNjHTMY/nReSW9yXwlT1W/X63vuvDWwb/K5PPg=;
	b=fXTQXItBAHx5DF/A7k3fBjDHB+Bp/N1IRzE5M8ee+nilDzCyJa2RAq1AEvH1aJ4r
	I2nUe8UlUgZt/agRz/4+Z996Lw0D8DEF4hRli6Dlx36evH18MrnL5SoAdYmLVty2zkw
	vxQGfSX+fqk5Rf1MQGp5D/J+UG6dRgoYtjjkJxw0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647943284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=catxFuNjHTMY/nReSW9yXwlT1W/X63vuvDWwb/K5PPg=;
	b=YCRudNLQW8tB8MOjQivqywoJXjkNa3AFPCml6LXdiJAa1FQZMrz4XtkvFAjlXNWE
	+LSYLDpXUBnba0AjpPU5lviTPugXyuzbg8eSKwgjiKMpXJfVwHxqueWFODNuvABaJBP
	XgkWdd+2qON/8TFCot2G69OEqRElvCreh+jRaTGk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb112f7f6-7d62937d-7ae1-472c-bbfb-16d875c8b2a5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0940c727740aa0410f0f01e4ce783573df3bfd75a4bc4a068bb79bd06aeb4b82
Date: Tue, 22 Mar 2022 10:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647943284
