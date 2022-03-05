Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6605D2F4A
	for <ddprobe@lists.linux.dev>; Sat,  5 Mar 2022 22:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646517684;
	h=To:Subject:From:Message-Id:Date;
	bh=RaoCFvhEjswA7Y8dEpEApE8fWjDukxF1mg8m4NfWi6A=;
	b=mxpOZWuDComvRM4qdHnq9/gMxVNxsFbyFv0N2WpovhcpXJ/7ErvZ4pIEq29mpFXT
	S5cW2q8RwTmEf+tTW1lvWbrS3A1/dWa+9jArRen6pnkxN3BzqB2DYRe/rearUZiNUBD
	Y50exX8nmOPAzO2Kz88iQEp0SoKETmUzKmxjuVKA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646517684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RaoCFvhEjswA7Y8dEpEApE8fWjDukxF1mg8m4NfWi6A=;
	b=hTs8/ZVvaAp52IIsK358U5TbATdV3e4rwPOoVsh/HdPMZwC0PGMPY7m3jsrpLxPD
	P6R2URhSE1/g56LrohlhrhzQSwMzTvEekeFc4cUHKnr+ANHbI/xmX5za45qKfww8Fun
	yY1fQZU34fJCw1/PTJP7Lf97qjc+3JIhcikCJ9cc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5c1a0a20-f137f2c7-851a-4d27-8f6d-261e816ac46b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 95d725d8432a79a4bbd6c749dd24199297a743df3b02599743379a666e2cea96
Date: Sat, 5 Mar 2022 22:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.05-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646517684
