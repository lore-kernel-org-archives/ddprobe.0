Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 312802F5C
	for <ddprobe@lists.linux.dev>; Wed, 13 Apr 2022 23:27:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649892478;
	h=To:Subject:From:Message-Id:Date;
	bh=Nt0EUJorfb0WZRABBdx+WU6Lz1mo2ULGzLD/sFX/zqs=;
	b=BUkSadnORLMZb0zMYUdMLZRs8uE21X+tDdLxa/eLqNXBpMlwuNaMrA2zauY3kxXd
	7N4SFveqkL1fX2SeJnLKiKxtifEkefnI5EOm2gD+4hgJujK+7u8+dX5VRvDwxFRfrZ0
	bVV58F0f0JK8gnlOS/Os8y2Q87MIl7WhyDvEw3Jc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649892478;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Nt0EUJorfb0WZRABBdx+WU6Lz1mo2ULGzLD/sFX/zqs=;
	b=T0tDgnYwllvnk3Aifqzp/MVe7kWlEJmN+wwC3ZiYeV0x7dF9tm7OQMGRomjPXXIm
	4AyTs00KaJZ4fRse/kwksTQTBJa7fX5LBnmWXe5JkxhMrUZ4yZRohz5y46XtG3qNnpT
	ZRVI/HWw26id9rDaMUfDOGXTOGHz4VJrxAswdVOs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018025414d90-4c8ef7a3-9560-4a2b-9053-b8e22ac7a570-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f2820060c969126ee2800b282978a1a56e95127e831c47f101be37f8cac2221d
Date: Wed, 13 Apr 2022 23:27:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.13-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649892478
