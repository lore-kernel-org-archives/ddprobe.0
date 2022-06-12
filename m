Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D59A7F5
	for <ddprobe@lists.linux.dev>; Sun, 12 Jun 2022 09:42:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655026919;
	h=To:Subject:From:Message-Id:Date;
	bh=X0LGZWqW76GkvVg3YWv5BuxcscUSv67YhfdizXAxHOY=;
	b=BDYB3n3Ue8w29C3mPI3Dq/gr/QJVAw7ZU8QSD1Nr57lzWVAtswUc+BnwmgqwUptu
	NkO16La7PzX+WWC4SOtIsjPueH0VM7N1VTHKoporf+uC+xQWFAAq0/m3/t46RJlnfuh
	GaHCeQA32nB4nDY8mg+FhxT/OcmrS4GgbXkmANV0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655026919;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=X0LGZWqW76GkvVg3YWv5BuxcscUSv67YhfdizXAxHOY=;
	b=Ck0CGfEMVIM8cVLnG/N9A02CPR7+IdBlR6kgd5Aj7tmuudgTmvqJSfsBq9tUoNVj
	9LuiDeAwWxcZbOmVAUiIt5n9/OINLM+s+T9w2cDQG1bouCEa2uxYY9xuhi6m5L29IE3
	jhPM5w832pZSMKfIe1XdN+GazyP5LsvPjh1mseYc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181574aa7d2-6aa29df2-335b-4ba8-8980-7b16069e4ff8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5320fda5c7b3c8e4c5b237b0e7b9c06039848cab4c0916a3969623b7bdce6849
Date: Sun, 12 Jun 2022 09:41:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.12-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655026919
