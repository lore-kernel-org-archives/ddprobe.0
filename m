Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08C7A7C
	for <ddprobe@lists.linux.dev>; Fri,  4 Mar 2022 03:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646365585;
	h=To:Subject:From:Message-Id:Date;
	bh=pLa/mb0C0EGcbn3NOVnQryWkz/wbr9c4EsKsd4h6MKc=;
	b=M46osA4s/KVF7RCzryDafyjpM/8V2fWQWf+YeMDXEl6srnLvK2pyaoJvz34qsKf/
	cv5VDPK9+ge9exRmv4y0syUwwwnQeK6qMd2cR6BW5qd97YAjWBjgfXMTKkoTDFk1fIq
	UdIu3iof5BMbCSjJ2DG+fE9kVwI8f/qICT8xcAUU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646365585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pLa/mb0C0EGcbn3NOVnQryWkz/wbr9c4EsKsd4h6MKc=;
	b=likqY2NxMmABcZ8lP3iojOcWhoZYR9D2G9vLe3gx3rnpJZPcQ7UG0cOlssanWo/f
	4k45YPjBr4pgz3R4hO6I6BLrHwsbZKp637nCiL/UVeXtTEMybv+lI27RIaRz0bRPPp2
	IL9v5ktI7ByZR/wpYStnAj0OEFCTRAUD9YWb6uH8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f53092ddf-6ec24717-8c05-4ede-97a3-57b73c4364c2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 072b22f65812f370881f8beda0a822cec5a71cb36c1de655a53a4901db64b332
Date: Fri, 4 Mar 2022 03:46:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.04-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646365584
