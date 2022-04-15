Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11DF17B
	for <ddprobe@lists.linux.dev>; Fri, 15 Apr 2022 08:35:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650011758;
	h=To:Subject:From:Message-Id:Date;
	bh=dQUlWbG6G3qdXbZ+0KAJF9z6uGnSTgXwSLOy352u8mM=;
	b=YZ8PCJslyjGEbl3msIEldPfpfeydfCMd0wwom0qlTyoZBg4KVHzs6B6Ag2AC2OJ8
	88A0M0EPfj+DVG9RUqi5uQyy4FQSTGArSVNL2tYMIQ4TaB5KKkHO4cuNz2OjZAh7LUh
	c4FbAkvIjgz8tLVaYyJH7HBQtMLckX3M42kL8TK8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650011758;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dQUlWbG6G3qdXbZ+0KAJF9z6uGnSTgXwSLOy352u8mM=;
	b=flXdjG19IYhONx4OEonojnBcN7CbVNvJIIRoYKPBgtySxfewQjNtkuI4cMZL5bRU
	GYqo3ccQhRfaLwJkcZVO1FT5QCHQn/1rMtIEp99ECh1cXIh4PY9eRR9sIhCMdddIEOO
	lUwmMHtANe5nsqqj2ZdDX+xyW8+hzMROWKLJlOKM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101802c5d5eac-4d740e45-8571-49ea-99d5-9a85e5171bec-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7858fd49ad8008253f3771cd7e6bf06a11ed631ce38608d0935b1df522e905a2
Date: Fri, 15 Apr 2022 08:35:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.15-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650011758
