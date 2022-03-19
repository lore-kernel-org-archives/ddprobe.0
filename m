Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01D5A17E
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 13:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647695485;
	h=To:Subject:From:Message-Id:Date;
	bh=lPLzEbx9bUyvDz5vqGRorkzpOgp6nZIfAlC8mP90MGI=;
	b=ViKEChDbsTWGFWXBvtLsPB1rZRbHG3j02Rb2UjlTKXDk/jGJQslVk/XLGgdmZTPB
	IVyckYd6CW+dCZ3VV9x/eNcjoH1sZWAfe4YadUKIV62YplQatIokaZUmpx4BFfzGgXJ
	OXDsXRJXi1HMru9afmnbNf+dntMF5jvaY55YDyTo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647695485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lPLzEbx9bUyvDz5vqGRorkzpOgp6nZIfAlC8mP90MGI=;
	b=MUDGhyksXa9DFVc6QrJm/eOktaxh90mdoU2ItSuyl7I4zfy7Wf/DEP1a/Et6gqr9
	5b2XcqS9lU1/JM8bL18ZckQATnruVaWRIVvzOEL1IuspSHjaKiCXl5HftFcgdVXsjCh
	FePxNlpOg9g0uGWH02s6X/PR9ieWdBB/VR9tVMZs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa24dd737-3dc69585-8c14-47be-9394-692f550efde1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fb97cd790c3c963836d37f038ed88601fe26236ae63c22bbf98f367e6e19eabf
Date: Sat, 19 Mar 2022 13:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647695484
