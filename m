Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03C617C
	for <ddprobe@lists.linux.dev>; Sat,  2 Apr 2022 18:47:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648925278;
	h=To:Subject:From:Message-Id:Date;
	bh=Tiyj/xy+UcDbm1+Tnqz7PqjcSHRCXpWeKPAoJcH+6a0=;
	b=Yduoipzjr0IVtDaeGNe8iA2RxqUXYlpbONs+UAVFS08CfId+IGHKEiyKYjm2ryRy
	EoktJ7+4bAlhZZ7ler4zn12/uHRHOXxxVQW56b2Fl+kvBkUFzVtp82f/PZcn4sKdqwB
	quCAISKVitHwHR4Oy5YLFB/nlRhHda0ummw7R7AA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648925278;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Tiyj/xy+UcDbm1+Tnqz7PqjcSHRCXpWeKPAoJcH+6a0=;
	b=SwI5XK6aMwfQbVeDcPYHr520eIqBYhFkYNUsHH8Ka/D2x3UUBAJ37oFhQAP3WAYQ
	uC3LHdFqKHtBNj48rdST1NlD/+0vhPYF5v1+pBYIga1Sc8WiPdc8O+ikxbdCCvCxnj8
	x5ugRLwJ6I/EyUTGlx6zH/E1Pt185A+yDUabFs3U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017feb9b005f-348e0252-fa58-42da-b9af-6f518231579f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e7b48dcb4c505cb46cee5f1a4b3458ee6ad5ec9d6160178a9018e76b0aaa7ac5
Date: Sat, 2 Apr 2022 18:47:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.02-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648925278
