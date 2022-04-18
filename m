Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ADB2A41
	for <ddprobe@lists.linux.dev>; Mon, 18 Apr 2022 19:46:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650311218;
	h=To:Subject:From:Message-Id:Date;
	bh=Q4xKcflBrSq9dJpGNvJKXlcs2ZAc3jlAJN5N7cX6N2Q=;
	b=kw62x27kNY3GoHa/KFxFWdrsTqn+MHMIUl06QmR4dU3cO4/CQjnXbDfuCav5ReNe
	XBDUmBRIganYKj77WKgudXV9MtwHYgUteoP+XkD5NA6nvKw+8AvXnffuO5tLvIckTBg
	wbh3vOIB41OztJcFjtaO6zleQOiCASMHvcMgw2GM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650311218;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Q4xKcflBrSq9dJpGNvJKXlcs2ZAc3jlAJN5N7cX6N2Q=;
	b=BEqM+F1o4pxj9Vd9eqDKyCGVll/SXOpkj7xreGORuIELzMwBEvrtAGDjSw3fOrUw
	MkpDaLf+O7bH2Hcw4mhsRqk9+O4BoqlamF8UAZfEPBPc3qyD4rhCywH4U7Rn+XdBOEj
	s7ZT6H6drgpzV4uTWBIKb5ufFVwzrMaZj/ysN/BI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101803e36c455-265a63d0-662f-4b77-b893-91d391232354-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b93bc4f4fad2454de03dbf006d46de7b674004624bad990ed5ffededecd3fbe3
Date: Mon, 18 Apr 2022 19:46:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.18-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650311218
