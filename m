Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66E414C7E
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 14:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647614484;
	h=To:Subject:From:Message-Id:Date;
	bh=2RLnvf33jRwK8lPIiJw+gll0l5ZyzlAvDMkdOhw0vgs=;
	b=XD7yB6XuQgnU0NSPFAo6mx0YIG0JaY+lDtVFP7+Pxi8/WwjM6VgjEtzpTl1swxTJ
	pyCj7yEn+lXJyGI6xA/CBQIBJK9zu+HdviV2QGwEAIZjNjpMU937xKioRdLXlKKD+dS
	rzXpuhSFhcOfVeoZfxso+lxiYyWGllSmLT0jLyp8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647614484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2RLnvf33jRwK8lPIiJw+gll0l5ZyzlAvDMkdOhw0vgs=;
	b=SX/ri1J71CX/irSV99ySudJ4qsbVNgdsIiJEvxjnngfubUVbovyYNTMR+zpV03ix
	hHQHKK3S0HPlLM3b7fspE/znUgfs6QI6k4ymC6ihO0WVwlyVNKDom1CvapOzT1RnmXs
	YoU8us5ofMVNI+Pknq2LITbPaRWso2aoDWT1IShI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9d79e13f-43aa5610-e25f-4c26-8c41-94741118b314-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b58f0e28ab18efdfddf234df59aa3bebac5524a9244358e0ab45982bee20a233
Date: Fri, 18 Mar 2022 14:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647614484
