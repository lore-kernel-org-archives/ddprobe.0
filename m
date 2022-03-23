Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E104C184E
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 11:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648033585;
	h=To:Subject:From:Message-Id:Date;
	bh=Zgk6x8mqsB1CXQ+XpruqMXaqo8HGkkwNoVXUJ3gRCYc=;
	b=UyI/TdCZNrDw0tppumHSobx1smoQ/S2iRprGDVA3bJGPKin51IXWNdWzfXvBzGY4
	yyOdjRlj2vKNYUAXnyjoJvtk4JMU8PY+HHfmaV7HrFcgSpShSIFFARU18mq1hf5G4gK
	+nSMEEhJdjqAay3zPHDthm3Wun42VLqicvGqEUQk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648033585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Zgk6x8mqsB1CXQ+XpruqMXaqo8HGkkwNoVXUJ3gRCYc=;
	b=Xw2YXIuADATMN4G/1LhU/G78IboAC6nR35oAUYLIi03JlNcdnh0Ts/nKHIfVkJ/a
	gI8Ucqku0lyVnP/h7cIzpP+FNwz0MA0ykEQzu9e1tlU0fREVEt0tVVC3EISFFoFc4li
	Jw8dSLs3mfIfpqSEV8E04n083IvFEL79KUaW3vG8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb674d693-b42fed78-c74e-4346-bc9e-2e33b2857721-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8515947c4c5e911f5b716ee7a14a699e3f67256a7be9069161a1dd78a5e4a99b
Date: Wed, 23 Mar 2022 11:06:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648033584
