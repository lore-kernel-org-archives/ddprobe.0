Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B9EF20E8
	for <ddprobe@lists.linux.dev>; Mon, 27 Jun 2022 03:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656299812;
	h=To:Subject:From:Message-Id:Date;
	bh=GjcKVADpP2ve+vMnZy+7zbMG4Upzp9pwL9m+jgRJruI=;
	b=ce4mUUQ+zDdR3kvGCFpPZrF37Rgag68v9/aOsyWaChMVJ2q8F7BizHmiDDamPgTJ
	39jNdKmGNzMDKFjmFb+aG/mYqTR7FuciGDIekWwEbwpPnjOl/lnRy4nwHjIjAF8rbA/
	d3PfJYZoHJWQRUxz0Ty24rXX9rSA0u49cJU0Ezm4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656299812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GjcKVADpP2ve+vMnZy+7zbMG4Upzp9pwL9m+jgRJruI=;
	b=BvaJ2kWDIpH2ukxgyYj/c8nqaYLU3NJYCVcjRlJuEyXzl1fd+PI3lfxg1ImsYLHJ
	3TLV6nWnBbFqhc7LNcyks6bI4g9WEPflB78XqFxR2zxlkp32NWtZzqni47vtDAkLSiI
	5EAPvpCAfYez0cCH5xD7UgXEBGyVpHgXKpfVoNx0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a32975b6-9adab59b-236a-49cb-b9d7-bc75be674414-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7310281c5d553f4b6d3e5531d0d43ed9daa2d28ad886ddc7af4eee9869c2f20a
Date: Mon, 27 Jun 2022 03:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.27-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656299812
