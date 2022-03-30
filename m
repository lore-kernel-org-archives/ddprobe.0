Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A8D37C
	for <ddprobe@lists.linux.dev>; Wed, 30 Mar 2022 02:40:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648608058;
	h=To:Subject:From:Message-Id:Date;
	bh=EoZr+hubBFz8RgMOE2ErBLL7EYX8VGkehmY7ikHM+FQ=;
	b=Vxe7QCZf5S7pJR+JYUfQcpVw9tEOkhD+RFp+v+ym1TJM1yu/0VfqDwJtZiIcD4M4
	Il6D4cxlWPGI7ClxmONWIcZ44EagOdSEe99IoDNVvpDn4YbEQLEmkBccSp1dq/VPbL9
	K398wZOmO5izCJc0x9txISm4kOSSCrdhgB6rnKck=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648608058;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EoZr+hubBFz8RgMOE2ErBLL7EYX8VGkehmY7ikHM+FQ=;
	b=ji/JPgboDPR9lk8uBnlg49SgVlWYdu0vhVF876OSZAhBYZScUEZP+DIdq1EoQvg+
	iONQ6plG3rrJyDf2atfCUmxbhDFc8Nzv8PBtqKwDbcYr46zfGhsg9SHpujNC/jt+6Jg
	fEAjdS4/40CbCZN5B6GQppp88dMNnPZuXIUGtV24=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fd8b29bbf-59d0e4d6-3ede-4ab2-afd9-293832b7313f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f02987db043cb675e60b415afb68bdd19f35a8a3df19d6e215a741ead7183ff2
Date: Wed, 30 Mar 2022 02:40:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.30-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648608058
